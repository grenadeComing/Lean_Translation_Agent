import Mathlib
open Real Nat Set Finset
open scoped Topology
open Complex

/-- Let \sum_{n=0}^\infty c_n (x-a)^n be a power series with radius of convergence 0<\rho\le\infty, let I be as above, and let f : I -> ℝ be its sum. Then f is differentiable and f'(x) = \sum_{n=0}^\infty (n+1)c_{n+1} (x-a)^n , with radius of convergence equal to \rho. -/
theorem hasDerivAt_tsum_of_radius_pos {a : ℝ} {c : ℕ → ℝ} {r : ℝ} {I : Set ℝ} {f : ℝ → ℝ} (hr : 0 < r) (hI : I = {x | abs (x - a) < r}) (hs : ∀ x ∈ I, HasSum (fun n => c n * (x - a) ^ n) (f x)) : ∀ x ∈ I, HasDerivAt f (∑' n : ℕ, (n + 1) * c (n + 1) * (x - a) ^ n) x := by sorry