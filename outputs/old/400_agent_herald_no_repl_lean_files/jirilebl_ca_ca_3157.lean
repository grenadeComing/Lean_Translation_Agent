import Mathlib

/-!
If f : U -> ℂ is a holomorphic function on a domain U ⊆ ℂ, then f is analytic.
That is, given z0 ∈ U, f has a Taylor series, and it converges in the disk
{ z : |z - z0| < R }, where R is the distance to the nearest singularity
(possibly R = ∞). Furthermore, the sum of the series is f.
-/

open Complex Set Metric

theorem holomorphic_on.is_analytic_at_radius {U : Set ℂ} {f : ℂ → ℂ}
  (hopen : IsOpen U) (hhol : holomorphic_on U f) :
  ∀ z0 ∈ U, let R := dist z0 (Uᶜ) in
    ∃ (a : ℕ → ℂ), ∀ z, dist z z0 < R → HasSum (fun n => a n * (z - z0) ^ n) (f z) := by sorry
