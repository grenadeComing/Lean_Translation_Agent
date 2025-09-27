import Mathlib
open Filter
open Topology
open Complex

/-- Let a : ℕ → ℂ be coefficients and f : ℂ → ℂ be given by a convergent power series around 0: there exists R > 0 such that for all z with |z| < R, HasSum (fun k => a k * z^k) (f z). Let (z_n) be a sequence of nonzero complex numbers converging to 0, and assume every z_n lies in the disk of convergence and f(z_n) = 0 for all n. Then every coefficient a_k is 0. -/
theorem power_series_coeffs_zero_of_zeros {a : ℕ → ℂ} {f : ℂ → ℂ} {z : ℕ → ℂ}
  (R : ℝ) (hR : 0 < R)
  (hseries : ∀ w : ℂ, dist w 0 < R → HasSum (fun k => a k * w ^ k) (f w))
  (hz_nonzero : ∀ n, z n ≠ 0)
  (hz_lim : Tendsto z atTop (𝓝 (0 : ℂ)))
  (hz_in : ∀ n, dist (z n) 0 < R)
  (hz_zero : ∀ n, f (z n) = 0) : ∀ k, a k = 0 := by
  sorry
