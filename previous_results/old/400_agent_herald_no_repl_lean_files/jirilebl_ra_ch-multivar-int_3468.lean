import Mathlib

/-- Let U ⊂ ℝ^2 be a connected open set and let f : U → ℝ be harmonic (that is, twice continuously differentiable with f_{xx}+f_{yy}=0 on U).

Prove the maximum principle: if f attains a maximum at some p ∈ U, then f is constant on U. -/
theorem harmonic_maximum_principle_connected {U : Set (ℝ × ℝ)} (hU : IsOpen U) (hconn : IsConnected U)
  {f : ℝ × ℝ → ℝ} (hf : ContDiffOn ℝ 2 f U) (hlap : ∀ x ∈ U, (Laplacian f) x = 0)
  {p : ℝ × ℝ} (hp : p ∈ U) (hmax : IsMaxOn f U p) : IsConstOn f U := by sorry
