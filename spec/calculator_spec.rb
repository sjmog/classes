require 'calculator'

describe '#add' do
  it 'adds two numbers' do
    calc = Calculator.new
    expect(calc.add(2, 3)).to eq 5
    expect(calc.add(6, 4)).to eq 10
    expect(calc.add(0, 0)).to eq 0
    expect(calc.add(-1, -1)).to eq -2
    expect(calc.add(Float::INFINITY, 0)).to eq Float::INFINITY
    expect(calc.add(Float::INFINITY, Float::INFINITY)).to eq Float::INFINITY
  end
end

describe '#subtract' do
  it 'subtracts two numbers' do
    calc = Calculator.new
    expect(calc.subtract(3, 2)).to eq 1
    expect(calc.subtract(6, 4)).to eq 2
    expect(calc.subtract(0, 0)).to eq 0
    expect(calc.subtract(-1, -1)).to eq 0
    expect(calc.subtract(Float::INFINITY, 0)).to eq Float::INFINITY
    expect(calc.subtract(Float::INFINITY, Float::INFINITY)).to be_nan
  end
end

describe '#print_answer' do
  it 'pretty prints the answer' do
    calc = Calculator.new
    expect(calc.print_answer(4)).to eq "The Answer is: 4"
    expect(calc.print_answer(6)).to eq "The Answer is: 6"
    expect(calc.print_answer(-1)).to eq "The Answer is: -1"
    expect(calc.print_answer(0)).to eq "The Answer is: 0"
    expect(calc.print_answer(Float::INFINITY)).to eq "The Answer is: Infinity"
  end
end