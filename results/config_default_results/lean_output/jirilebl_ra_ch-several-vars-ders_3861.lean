import Mathlib
open Set Fin Filter Function
open scoped Topology

/-- Let f : R^n → R be C^2 and H_f continuous in a convex set U. Show that the second-order Taylor expansion is uniform on compact subsets of U. -/
theorem uniform_taylor_approx_on_compacts {n : ℕ} (f : (Fin n → ℝ) → ℝ) {U : Set (Fin n → ℝ)}
  (hU_conv : Convex ℝ U) (hf : ContDiffOn ℝ (2 : WithTop ℕ∞) f U)
  (hH : ContinuousOn (iteratedFDeriv ℝ 2 f) U) :
  ∀ K : Set (Fin n → ℝ), IsCompact K → K ⊆ U →
    Tendsto (fun h : Fin n → ℝ =>
      if h = 0 then 0 else
        sSup ((K ∩ {x | x + h ∈ U}).image fun x =>
          abs (f (x + h) - f x - (fderiv ℝ f x) h - (1 / 2 : ℝ) * ((iteratedFDeriv ℝ 2 f x) fun _ => h)) / ‖h‖ ^ 2))
    (𝓝 0) (𝓝 0) := by sorry
