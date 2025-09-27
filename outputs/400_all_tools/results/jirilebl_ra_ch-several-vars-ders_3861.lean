import Mathlib

variables {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E]
  {U K : Set E} {f : E → ℝ}

/-- Let E be a finite-dimensional real normed space. Let U ⊆ E be convex. Let f : E → ℝ be C^2 on U (ContDiffOn ℝ 2 f U).
    The second-order Taylor expansion is uniform on compact subsets of U: for every compact K ⊆ U and every ε > 0
    there exists δ > 0 such that for all x ∈ K and all h ∈ E with x + h ∈ U and ‖h‖ < δ we have

    |f(x + h) - f(x) - fderiv ℝ f x h - (1/2) * ((fderiv ℝ (λ y, fderiv ℝ f y) x) h) h| ≤ ε * ‖h‖^2. -/
theorem uniform_second_order_taylor_on_compact (hU_convex : Convex ℝ U)
  (hf : ContDiffOn ℝ 2 f U) (hK : IsCompact K) (hKsub : K ⊆ U) :
  ∀ ε > (0 : ℝ), ∃ δ > 0, ∀ x ∈ K, ∀ (h : E), x + h ∈ U → ‖h‖ < δ →
    abs (f (x + h) - f x - (fderiv ℝ f x) h - (1 / 2 : ℝ) * ((fderiv ℝ (fun y => fderiv ℝ f y) x) h) h)
      ≤ ε * ‖h‖ ^ 2 := by sorry
