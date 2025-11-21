import Mathlib

open Filter

/--
Suppose z0 ∈ ℂ. Show that lim_{z→z0} f(z) = ∞ in the sense of the Riemann sphere
iff for every M > 0 there exists a δ > 0 such that |f(z)| > M whenever 0 < |z-z0| < δ.
-/
theorem jirilebl_ca_ca_1436 (f : Complex → Complex) (z0 : Complex) :
  Tendsto (fun z => Norm.norm (f z)) (nhdsWithin z0 {z | z ≠ z0}) atTop ↔
    ∀ M : ℝ, M > 0 → ∃ δ > 0, ∀ z : Complex, (0 < Norm.norm (z - z0) ∧ Norm.norm (z - z0) < δ) → M < Norm.norm (f z) := by sorry
