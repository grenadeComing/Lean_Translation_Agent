import Mathlib

/-- Let U ⊂ ℂ be a domain (open and connected) and f : U → ℂ be holomorphic.

Then f is analytic on U; that is, f has a Taylor series expansion around each point
with radius of convergence equal to the distance to the nearest singularity, and the
series sums to f. -/
theorem holomorphic_is_analytic {U : Set ℂ} (hU : IsOpen U) (hUconn : IsConnected U)
  {f : ℂ → ℂ} (hf : IsHolomorphicOn f U) :
  AnalyticOn ℂ f U ∧
  ∀ z0 ∈ U, ∃ (a : ℕ → ℂ),
    (radius (PowerSeries.mk a) = dist z0 (Uᶜ)) ∧
    (∀ z ∈ ball z0 (dist z0 (Uᶜ)), (∑' n : ℕ, a n * (z - z0)^n) = f z) := by sorry