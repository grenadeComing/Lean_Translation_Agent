import Mathlib

/-- Uniform second-order Taylor expansion on compact sets.

Let E be a finite-dimensional real normed space, U ⊆ E convex, and f : E → ℝ be C^2 on U
with continuous second derivative. Then for every compact K ⊆ U the second-order Taylor
expansion holds uniformly on K: for every ε>0 there exists δ>0 such that for all x∈K and
y∈U with ‖y-x‖<δ,

|f(y) - f(x) - fderiv ℝ f x (y-x) - 1/2 * (fderiv ℝ (fun x => fderiv ℝ f x) x) (y-x) (y-x)| ≤ ε * ‖y-x‖^2.
-/
lemma taylor_second_order_uniform_on_compact {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
  [FiniteDimensional ℝ E] {U : Set E} (hU : Convex ℝ U) {f : E → ℝ} (h : ContDiffOn ℝ 2 f U)
  {K : Set E} (hK : IsCompact K) (hKsub : K ⊆ U) :
  ∀ ε > (0 : ℝ), ∃ δ > (0 : ℝ), ∀ x ∈ K, ∀ y ∈ U, ‖y - x‖ < δ →
    |f y - f x - (fderiv ℝ f x) (y - x) - (1 / 2) * ((fderiv ℝ (fun x => fderiv ℝ f x) x) (y - x) (y - x))|
      ≤ ε * ‖y - x‖ ^ 2 := by
  sorry
