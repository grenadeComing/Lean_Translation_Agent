import Mathlib

/-- For each θ in ℝ, the reflection of ℝ^2 across the line through the origin making angle θ with the x-axis is a linear operator, and its matrix H_θ is an improper orthogonal matrix (i.e., H_θ ∈ O(2) and det H_θ = -1). -/
theorem reflection_improper_orthogonal (θ : ℝ) :
  ∃ H : Matrix (Fin 2) (Fin 2) ℝ,
    Matrix.det H = -1 ∧ Hᵀ ⬝ H = 1 := by
  sorry
