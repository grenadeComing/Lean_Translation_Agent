import Mathlib

/-!
Lemma (informal): Let E be a finite-dimensional real normed space, U ⊆ E convex.
Let f : E → ℝ be C^2 on U and suppose the Hessian of f is continuous on U.
Then for every compact K ⊆ U the second-order Taylor expansion holds uniformly on K:
for all ε>0 there exists δ>0 such that for all x∈K and h with x+h ∈ U and ‖h‖<δ,
| f(x+h) - f(x) - fderiv ℝ f x h - 1/2 * (hessian f x) (h, h) | ≤ ε * ‖h‖^2.
-/

open Set Filter

variables {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E]
variables {U K : Set E} {f : E → ℝ}

lemma second_order_taylor_uniform_on_compact
  (hf : ContDiffOn ℝ 2 f U)
  (h_hess : ContinuousOn (fun x => hessian f x) U)
  (hU : Convex ℝ U)
  (hK : IsCompact K)
  (hKsub : K ⊆ U) :
  ∀ ε : ℝ, 0 < ε → ∃ δ : ℝ, 0 < δ ∧
    ∀ x ∈ K, ∀ (h : E), x + h ∈ U → ‖h‖ < δ →
      | f (x + h) - f x - (fderiv ℝ f x : E →L[ℝ] ℝ) h - (1 / 2) * (hessian f x) (h, h) | ≤ ε * ‖h‖ ^ 2 := by
  sorry
