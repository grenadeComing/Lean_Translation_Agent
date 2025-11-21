import Mathlib

open Matrix

theorem exists_continuous_g_of_orth_invariant (n : ℕ) :
  ∀ (f : Matrix (Fin n) (Fin n) ℝ → ℝ),
    Continuous f ->
    (∀ (U : Matrix (Fin n) (Fin n) ℝ), Uᵀ * U = 1 -> ∀ V, f (U * V) = f V) ->
    ∃ g : Matrix (Fin n) (Fin n) ℝ → ℝ,
      ContinuousOn g {A | A.IsSymm ∧ Matrix.PosSemidef A} ∧
      (∀ V, g (Vᵀ * V) = f V) := by sorry
