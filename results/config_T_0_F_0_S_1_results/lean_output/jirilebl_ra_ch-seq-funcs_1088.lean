import Mathlib

/--
Let ∑ c_n (x-a)^n be a power series with radius of convergence 0 < ρ ≤ ∞,
let I = {x | |x-a| < ρ}, and let f : ℝ → ℝ be its sum on I. Then f is differentiable on I
and f'(x) = ∑_{n=0}^∞ (n+1) c_{n+1} (x-a)^n, with radius of convergence equal to ρ.
-/
theorem power_series_derivative {c : ℕ → ℝ} {a : ℝ} {ρ : ℝ} {I : Set ℝ} {f : ℝ → ℝ}
  (hρ : 0 < ρ)
  (hI : I = { x | |x - a| < ρ })
  (hsum : ∀ x ∈ I, HasSum (fun n => c n * (x - a) ^ n) (f x)) :
  differentiable_on ℝ f I ∧
  (∀ x ∈ I, deriv f x = ∑' fun n => (n + 1) * c (n + 1) * (x - a) ^ n) ∧
  radius_of_convergence (fun n => (n + 1) * c (n + 1)) = ρ := by sorry
