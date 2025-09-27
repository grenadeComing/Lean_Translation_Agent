import Mathlib

/--
Let \sum_{n=0}^\infty c_n (x-a)^n be a power series with radius of convergence 0<\rho\leq \infty,
let I be as above, and let f : I → ℝ be its sum. Then f is differentiable and
f'(x) = \sum_{n=0}^\infty (n+1)c_{n+1} (x-a)^n ,
with radius of convergence equal to \rho.

We state a formal version: if a function f : ℝ → ℝ equals the termwise sum of a power
series on the open interval I = {x | |x - a| < ρ}, then f is differentiable on I and
its derivative is the termwise derived series. The proof is omitted (by sorry).
-/

theorem power_series_differentiable_on {c : ℕ → ℝ} {a ρ : ℝ} (hρ : 0 < ρ)
  (f : ℝ → ℝ)
  (hsum : ∀ x, abs (x - a) < ρ → HasSum (fun n => c n * (x - a) ^ n) (f x))
  (hsum' : ∀ x, abs (x - a) < ρ → Summable (fun n => (n + 1) * c (n + 1) * (x - a) ^ n)) :
  DifferentiableOn ℝ f {x | abs (x - a) < ρ} ∧ ∀ x, abs (x - a) < ρ → deriv f x = tsum (fun n => (n + 1) * c (n + 1) * (x - a) ^ n) := by
  -- proof omitted
  sorry
