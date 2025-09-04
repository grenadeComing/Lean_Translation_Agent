import Mathlib

open Set

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E]

/-- Let U be convex and f be C^2 on U. Then there exists a formal Taylor series p (HasFTaylorSeriesUpToOn 2 f p U),
and the second-order Taylor expansion is uniform on compact subsets of U: for every compact K ⊆ U and every ε > 0
there exists δ > 0 such that for all x ∈ K and all h with x + h ∈ U and ‖h‖ < δ one has
  | f (x + h) - (f x + (p x 1) h + (1/2) * (p x 2) (h, h)) | ≤ ε * ‖h‖^2. -/
theorem taylor_second_order_uniform_on_compact
  {U : Set E} (hU_convex : Convex ℝ U) (f : E → ℝ) (hfn : ContDiffOn ℝ 2 f U) :
  ∃ p : E → FormalMultilinearSeries ℝ E ℝ, HasFTaylorSeriesUpToOn 2 f p U ∧
    (∀ K : Set E, IsCompact K → K ⊆ U →
      ∀ ε > 0, ∃ δ > 0, ∀ x ∈ K, ∀ h : E, x + h ∈ U → ‖h‖ < δ →
        |f (x + h) - (f x + (p x 1) (fun _ => h) + (1 / 2) * (p x 2) (fun _ => h))| ≤ ε * ‖h‖ ^ 2) :=
by sorry