import Mathlib

/-!
Let E be a finite-dimensional real normed space (so R^n). Let f : E → ℝ, U ⊆ E convex,
and f is ContDiffOn ℝ 2 on U. Then for every compact K ⊆ U we have

  tendsto (λ h : E, ⨆ x ∈ K, if x + h ∈ U ∧ h ≠ 0 then
      | f (x + h) - f x - (fderiv ℝ f x) h - (1 / 2 : ℝ) * (iterated_fderiv ℝ 2 f x) (h, h) | / ‖h‖ ^ 2
    else 0) (𝓝 0) (𝓝 0).

This expresses that the O(h^2) remainder is o(‖h‖^2) uniformly on compact subsets of U.
-/

lemma taylor_remainder_order_two_o_small_uniform_on_compacts
  {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E]
  {f : E → ℝ} {U K : Set E}
  (hconv : Convex ℝ U) (hf : ContDiffOn ℝ 2 f U) (hK : IsCompact K) (hsub : K ⊆ U) :
  Tendsto (fun h : E =>
    ⨆ (x ∈ K), if x + h ∈ U ∧ h ≠ 0 then
      | f (x + h) - f x - (fderiv ℝ f x) h - (1 / 2 : ℝ) * (iterated_fderiv ℝ 2 f x) (h, h) | / ‖h‖ ^ 2
    else 0)
    (𝓝 0) (𝓝 0) := by sorry
