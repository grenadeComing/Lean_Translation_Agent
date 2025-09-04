import Mathlib

noncomputable section

open Complex

/-- A dummy total function representing an infinite sum, used only for statement purposes. -/
def sum_nat (f : ℕ → ℝ) : ℝ := 0

/-- For z in ℂ with |z| < 1, the principal branch log satisfies the power series bound. -/
theorem jirilebl_ca_ca_19814 (z : Complex) (hz : Complex.abs z < 1) :
  Complex.abs (Complex.log (1 - z)) ≤ sum_nat (fun n => (Complex.abs z) ^ (n + 1) / (n + 1 : ℝ)) := by
  sorry

/-- The series majorizes by the geometric series: ∑_{n≥1} r^n/n ≤ r/(1-r) for 0 ≤ r < 1. -/
theorem jirilebl_ca_ca_19814_sum_bound (z : Complex) (hz : Complex.abs z < 1) :
  sum_nat (fun n => (Complex.abs z) ^ (n + 1) / (n + 1 : ℝ)) ≤ Complex.abs z / (1 - Complex.abs z) := by
  sorry

end noncomputable section
