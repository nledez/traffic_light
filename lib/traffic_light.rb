require "serialport"

class TrafficLight
  attr_reader :message

  def initialize(port="/dev/tty.usbmodemfd121")
    @port_str = port
    @baud_rate = 9600
    @data_bits = 8
    @stop_bits = 1
    @parity = SerialPort::NONE

    @sp = SerialPort.new(@port_str, @baud_rate, @data_bits, @stop_bits, @parity)
    @sp.read_timeout = 1000

    @opened = true

    clear
  end

  def open?
    @opened
  end

  def close!
    @sp.close
    @opened = false
  end

  def read
    @message = @sp.read.chomp
  end

  def setColors(colors)
    read
    @sp.write colors
    read
  end

  def clear
    setColors(0)
  end

  def green
    setColors(1)
  end

  def orange
    setColors(2)
  end

  def green_orange
    setColors(3)
  end

  def red
    setColors(4)
  end

  def green_red
    setColors(5)
  end

  def orange_red
    setColors(6)
  end

  def all
    setColors(7)
  end
end
