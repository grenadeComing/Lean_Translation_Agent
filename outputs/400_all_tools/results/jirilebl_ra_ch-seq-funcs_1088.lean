import Mathlib

/--
Let ∑_{n=0}^∞ c_n (x-a)^n be a power series with radius of convergence 0 < ρ (≤ ∞),
let I = {x | |x - a| < ρ}, and let f be its sum on I.
Then f is differentiable on I and
f'(x) = ∑_{n=0}^∞ (n+1) c_{n+1} (x-a)^n,
with the differentiated power series having the same radius of convergence ρ.
This statement is expressed using Summable on the disc of radius ρ.
-/
theorem power_series_deriv
  (c : ℕ → ℝ) (a ρ : ℝ) (hρ : 0 < ρ)
  (hs : ∀ x, |x - a| < ρ → Summable (fun n => c n * (x - a) ^ n)) :
  ∀ x, |x - a| < ρ → HasDerivAt (fun y => ∑' n, c n * (y - a) ^ n)
    (∑' n, (n + 1) * c (n + 1) * (x - a) ^ n) x := by sorry
