import Mathlib

/-!
Exercise 7.14 (Axler). Suppose T : L(V) is self-adjoint, λ ∈ 𝔽, and ε > 0.
Prove that if there exists v ∈ V with ∥v∥ = 1 and ∥T v - λ v∥ < ε,
then T has an eigenvalue λ' with |λ - λ'| < ε.
-/

-- We only state the result; proof omitted (exercise)
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]

open InnerProductSpace
open LinearMap

theorem axler_exercise_7_14 {T : V →ₗ[ℝ] V} (selfadj : ∀ x y, ⟪T x, y⟫ = ⟪x, T y⟫)
  {λ : ℝ} {ε : ℝ} (hε : ε > 0)
  (hexists : ∃ v : V, ∥v∥ = 1 ∧ ∥T v - λ • v∥ < ε) : ∃ λ' : ℝ, ∃ (w : V), (w ≠ 0) ∧ (T w = λ' • w) ∧ |λ - λ'| < ε := by sorry
