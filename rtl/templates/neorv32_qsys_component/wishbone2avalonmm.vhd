library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library work;

entity wishbone2avalonmm is port (
    clk                     : in std_logic;
    reset                   : in std_logic;

    -- Wishbone bus interface (available if MEM_EXT_EN = true) --
    wb_tag_i                : in std_ulogic_vector(02 downto 0); -- request tag
    wb_adr_i                : in std_ulogic_vector(31 downto 0); -- address
    wb_dat_o                : out std_ulogic_vector(31 downto 0); -- read data
    wb_dat_i                : in std_ulogic_vector(31 downto 0); -- write data
    wb_we_i                 : in std_ulogic; -- read/write
    wb_sel_i                : in std_ulogic_vector(03 downto 0); -- byte enable
    wb_stb_i                : in std_ulogic; -- strobe
    wb_cyc_i                : in std_ulogic; -- valid cycle
    wb_lock_i               : in std_ulogic; -- exclusive access request
    wb_ack_o                : out  std_ulogic; -- transfer acknowledge
    wb_err_o                : out  std_ulogic; -- transfer error

    -- AvalonMM interface
    read                    : out std_logic;
    write                   : out std_logic;
    waitrequest             : in std_logic;
    address                 : out std_logic_vector(31 downto 0);
    writedata               : out std_logic_vector(31 downto 0);
    readdata                : in std_logic_vector(31 downto 0));

end wishbone2avalonmm;

----------------------------------------------------------------------------------------------------
architecture rtl of wishbone2avalonmm is
----------------------------------------------------------------------------------------------------

attribute KEEP		: string;
attribute PRESERVE  : string;
attribute NOPRUNE   : string;

signal  read_int            : std_logic;
signal  write_int           : std_logic;

signal  wb_adr              : std_logic_vector(31 downto 0);
signal  wb_dat              : std_logic_vector(31 downto 0);
signal  wb_stb              : std_logic;
signal  wb_we               : std_logic;
signal  wb_ack              : std_logic;
signal  read_smp            : std_logic;
signal  write_smp           : std_logic;

attribute KEEP OF wb_adr:SIGNAL is "TRUE";
attribute KEEP OF wb_dat:SIGNAL is "TRUE";
attribute KEEP OF wb_stb:SIGNAL is "TRUE";
attribute KEEP OF wb_we:SIGNAL is "TRUE";
attribute KEEP OF wb_ack:SIGNAL is "TRUE";
attribute KEEP OF wb_dat_o:SIGNAL is "TRUE";
attribute PRESERVE OF wb_adr:SIGNAL is "TRUE";
attribute PRESERVE OF wb_dat:SIGNAL is "TRUE";
attribute PRESERVE OF wb_stb:SIGNAL is "TRUE";
attribute PRESERVE OF wb_we:SIGNAL is "TRUE";
attribute PRESERVE OF wb_ack:SIGNAL is "TRUE";
attribute PRESERVE OF wb_dat_o:SIGNAL is "TRUE";
attribute NOPRUNE OF wb_adr:SIGNAL is "TRUE";
attribute NOPRUNE OF wb_dat:SIGNAL is "TRUE";
attribute NOPRUNE OF wb_stb:SIGNAL is "TRUE";
attribute NOPRUNE OF wb_we:SIGNAL is "TRUE";
attribute NOPRUNE OF wb_ack:SIGNAL is "TRUE";
attribute NOPRUNE OF wb_dat_o:SIGNAL is "TRUE";

begin

    read <= read_int;
    write <= write_int;

    process(clk)
    begin
        if rising_edge(clk) then
            wb_adr <= std_logic_vector(wb_adr_i);
            wb_dat <= std_logic_vector(wb_dat_i);
            wb_stb <= wb_stb_i;
            wb_we <= wb_we_i;

            --wb_dat_o <= std_ulogic_vector(wb_adr or wb_dat or (x"000000" & "000" & wb_ack & read_smp & write_smp & wb_stb & wb_we));

            wb_ack <= not(waitrequest);

            read_smp <= read_int;
            write_smp <= write_int;

        end if;
    end process;

    read_int <= '1' when (wb_stb_i = '1' and wb_we_i = '0') else '0';
    write_int <= '1' when (wb_stb_i = '1' and wb_we_i = '1') else '0';
    address <= x"0" & std_logic_vector(wb_adr_i(27 downto 0));
    writedata <= std_logic_vector(wb_dat_i);

    wb_dat_o <= std_ulogic_vector(readdata);
    --wb_dat_o <= x"12345678";
    wb_ack_o <= not(waitrequest);
    wb_err_o <= '0';

end rtl;






