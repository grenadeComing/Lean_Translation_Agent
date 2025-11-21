import Mathlib

/-- Let f : ℝ^n → ℝ be differentiable and the second derivative (as an iterated Fréchet derivative)
    is continuous on a convex set U. Then Taylor's expansion up to second order holds with a
    uniform little-o(‖h‖^2) remainder on compact subsets of U. -/
theorem taylor_2_uniform_on_compacts {n : ℕ} {U : Set (Fin n → ℝ)} (f : (Fin n → ℝ) → ℝ)
  (hdiff : DifferentiableOn ℝ f U) (hess_cont : ContinuousOn (fun x => iteratedFDeriv ℝ 2 f x) U)
  (U_convex : Convex ℝ U) :
  ∀ K : Set (Fin n → ℝ), IsCompact K → K ⊆ U →
    ∀ ε : ℝ, 0 < ε → ∃ δ : ℝ, 0 < δ ∧
      ∀ x ∈ K, ∀ h : Fin n → ℝ, ‖h‖ < δ → x + h ∈ U →
        |f (x + h) - f x - (fderiv ℝ f x : (Fin n → ℝ) →L[ℝ] ℝ) h - (1 / 2 : ℝ) * (iteratedFDeriv ℝ 2 f x) fun _ => h| ≤ ε * ‖h‖ ^ 2 := by sorry
