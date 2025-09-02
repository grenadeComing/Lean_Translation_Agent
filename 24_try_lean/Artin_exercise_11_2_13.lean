import Mathlib

/-- If a, b are integers and a divides b in the ring of Gaussian integers, then a divides b in ℤ. -/
theorem int_dvd_of_gaussian_int_dvd {a b : Int} (h : ∃ z : GaussianInt, (a : GaussianInt) * z = (b : GaussianInt)) : a ∣ b := by sorry
