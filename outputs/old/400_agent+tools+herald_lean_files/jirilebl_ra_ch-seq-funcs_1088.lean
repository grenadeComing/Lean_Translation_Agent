import Mathlib

open Real

/-- Let \sum_{n=0}^\infty c_n (x-a)^n be a power series with radius of convergence 0 < ρ ≤ ∞,
let I := { x | |x - a| < ρ }, and let f : ℝ → ℝ be its sum on I, i.e. for all x ∈ I,
HasSum (fun n => c n * (x - a) ^ n) (f x).

Then f is differentiable on I and the termwise derivative series has the same radius ρ.
This statement asserts differentiability and that the derivative at each x ∈ I equals the sum
of the series of derivatives (expressed by existence of the sum and HasDerivAt). -/
theorem power_series_derivative_hasSum
  (c : ℕ → ℝ) (a ρ : ℝ) (hρ : 0 < ρ)
  (I : Set ℝ := { x | |x - a| < ρ })
  (f : ℝ → ℝ)
  (hf : ∀ x, x ∈ I → HasSum (fun n => c n * (x - a) ^ n) (f x)) :
  (∀ x ∈ I, DifferentiableAt ℝ f x) ∧
  (∀ x ∈ I, ∃ s, HasSum (fun n => (n + 1) * c (n + 1) * (x - a) ^ n) s ∧ HasDerivAt f s x) := by sorry
