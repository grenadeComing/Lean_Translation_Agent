import Mathlib

/-!
Translate: Let f : ℝ^n → ℝ be differentiable with ∇f continuous. Show that f is Lipschitz on convex subsets if ∇f is bounded on those subsets.

We state a version for functions on (Fin n → ℝ). If f is differentiable on a convex set s and the operator norm of fderiv is uniformly bounded on s, then f is Lipschitz on s.
-/

theorem differentiable_bounded_fderiv_lipschitz_on {n : ℕ} {s : Set (Fin n → ℝ)} {f : (Fin n → ℝ) → ℝ}
  (hs_conv : Convex ℝ s)
  (hf : DifferentiableOn ℝ f s)
  (M : ℝ) (hM_nonneg : 0 ≤ M) (hM : ∀ x ∈ s, ‖(fderiv ℝ f x)‖ ≤ M) :
  ∃ (K : NNReal), LipschitzOnWith K f s := by sorry
