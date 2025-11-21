import Mathlib

/--
Let ||·|| be any norm on R^n. Show that the induced operator norm on L(R^n, R^m)
satisfies ‖A‖ = max { ‖Ax‖ : ‖x‖ = 1 } = sup { ‖Ax‖ : ‖x‖ ≤ 1 } = sup { ‖Ax‖ : ‖x‖ < 1 }.
We state this for a finite-dimensional normed real vector space E (modeling R^n) and an
arbitrary normed real space F (modeling R^m). The theorem below records that the supremum
on the unit sphere is attained (hence a maximum) and equals the operator norm, and that this
common value equals the supremum over the closed and open unit balls. The equalities with
suprema are expressed by the usual epsilon-characterization for the open ball.
-/

theorem operator_norm_on_finite_dim_eq_max_sup {
  E F : Type _
} [NormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E]
  [NormedAddCommGroup F] [NormedSpace ℝ F]
  (A : E →L[ℝ] F) :
  -- the maximum on the unit sphere is attained and equals the operator norm
  (∃ x0 : E, ‖x0‖ = 1 ∧ ‖A x0‖ = ‖A‖) ∧
  -- every vector in the closed unit ball has image norm at most the operator norm
  (∀ x : E, ‖x‖ ≤ 1 → ‖A x‖ ≤ ‖A‖) ∧
  -- for every epsilon > 0 there is a vector in the open unit ball whose image
  -- has norm within epsilon of the operator norm (epsilon-characterization of the supremum)
  (∀ ε : ℝ, 0 < ε → ∃ x : E, ‖x‖ < 1 ∧ ‖A x‖ > ‖A‖ - ε) := by sorry
