import Mathlib

noncomputable def H_theta (theta : Real) : Matrix (Fin 2) (Fin 2) Real :=
  fun i j =>
    match i, j with
    | ⟨0, _⟩, ⟨0, _⟩ => Real.cos (2 * theta)
    | ⟨0, _⟩, ⟨1, _⟩ => Real.sin (2 * theta)
    | ⟨1, _⟩, ⟨0, _⟩ => Real.sin (2 * theta)
    | ⟨1, _⟩, ⟨1, _⟩ => - Real.cos (2 * theta)

def improper_orthogonal (M : Matrix (Fin 2) (Fin 2) Real) : Prop :=
  Mᵀ ⬝ M = 1 ∧ Matrix.det M = -1

-- The reflection across the line at angle θ is a linear operator on R^2,
-- and its matrix H_theta is an improper orthogonal matrix.
theorem reflection_is_improper_orthogonal (theta : Real) : improper_orthogonal (H_theta theta) := by
  sorry
