require "salary_calc"
# testing out if the outcome of the function is correct
describe "#generate_monthly_payslip" do
  it "return full salary details" do
    expect do
      generate_monthly_payslip("Ren", 60000)
    end.to output('Monthly Payslip for: "Ren"
Gross Monthly Income: $5000.00
Monthly Income Tax: $500.00
Net Monthly Income: $4500.00
').to_stdout
  end
  it "return full salary details" do
    expect do
      generate_monthly_payslip("Test1", 200000)
    end.to output(
      'Monthly Payslip for: "Test1"
Gross Monthly Income: $16666.67
Monthly Income Tax: $4000.00
Net Monthly Income: $12666.67
'
    ).to_stdout
  end
  it "return full salary details" do
    expect do
      generate_monthly_payslip("Test2", 80150)
    end.to output('Monthly Payslip for: "Test2"
Gross Monthly Income: $6679.17
Monthly Income Tax: $837.08
Net Monthly Income: $5842.08
').to_stdout
  end
end
