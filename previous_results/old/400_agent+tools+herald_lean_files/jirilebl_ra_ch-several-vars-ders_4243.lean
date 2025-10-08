import Mathlib
open Set Filter
open scoped Topology

/-!
Let f : E → ℝ be twice continuously differentiable on an open convex set U in a finite-dimensional
real normed space E. Then for every compact K ⊆ U the second-order Taylor expansion with
remainder o(‖h‖^2) holds uniformly for x ∈ K.
-/

theorem taylor_second_order_uniform_on_compact {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    [FiniteDimensional ℝ E] {f : E → ℝ} {U : Set E}
    (hU : IsOpen U) (convU : Convex ℝ U) (hcont : ContDiffOn ℝ 2 f U) :
  ∀ (K : Set E), IsCompact K → K ⊆ U →
    ∀ ε : ℝ, 0 < ε → ∃ δ > 0, ∀ x ∈ K, ∀ h : E, ‖h‖ ≠ 0 → ‖h‖ < δ →
      x + h ∈ U ∧
      |f (x + h) - f x - (fderiv ℝ f x : E →L[ℝ] ℝ) h - (1 / 2 : ℝ) * ((fderiv ℝ (fun y => fderiv ℝ f y) x) h) h|
        ≤ ε * ‖h‖ ^ 2 := by sorry
