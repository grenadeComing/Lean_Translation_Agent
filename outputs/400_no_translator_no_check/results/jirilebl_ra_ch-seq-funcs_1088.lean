import Mathlib

/-!
Statement: Let \sum_{n=0}^\infty c_n (x-a)^n be a power series with radius of convergence 0<ρ≤∞,
let I be as above, and let f : I → ℝ be its sum. Then f is differentiable and
f'(x) = \sum_{n=0}^\infty (n+1)c_{n+1} (x-a)^n,
with radius of convergence equal to ρ.

We state this in a form using HasSum and deriv; proof omitted.
-/

open Set

theorem power_series_termwise_deriv {c : ℕ → ℝ} {a ρ : ℝ} (hρ : 0 < ρ)
  (I : Set ℝ) (f : ℝ → ℝ)
  (h_sum : ∀ x ∈ I, HasSum (fun n => c n * (x - a) ^ n) (f x))
  (h_I : I = { x | |x - a| < ρ }) :
  ∀ x ∈ I, DifferentiableAt ℝ f x ∧ HasSum (fun n => (n + 1) * c (n + 1) * (x - a) ^ n) (deriv f x) := by sorry
