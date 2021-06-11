library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library work;

entity neorv32_ProcessorTop_Test is port (
    clk_i                   : in std_logic;
    rstn_i                  : in std_logic;
    gpio_o                  : out std_logic_vector(7 downto 0);
    uart0_txd_o             : out std_logic;
    uart0_rxd_i             : in std_logic);
end neorv32_ProcessorTop_Test;

----------------------------------------------------------------------------------------------------
architecture rtl of neorv32_ProcessorTop_Test is
----------------------------------------------------------------------------------------------------

component neorv32_test_qsys is
port (
    clk_clk               : in std_logic;
    cpu_io_gpio_o         : out std_logic_vector(7 downto 0);
    cpu_io_uart0_txd_o    : out std_logic;
    cpu_io_uart0_rxd_i    : in std_logic;
    reset_reset_n         : in std_logic);
end component;

begin

    my_riscv_core : neorv32_test_qsys
    port map (
        clk_clk => clk_i,
        cpu_io_gpio_o => gpio_o,
        cpu_io_uart0_txd_o => uart0_txd_o,
        cpu_io_uart0_rxd_i => uart0_rxd_i,
        reset_reset_n => rstn_i);

end rtl;
