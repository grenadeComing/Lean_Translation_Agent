import Mathlib

/-!
If f : E → ℝ is differentiable on s, fderiv is continuous on s, and fderiv is bounded on the
compact set s, then f is Lipschitz on s. Proof omitted (sorry).
-/

theorem diff_fderiv_bounded_on_compact_implies_lipschitz_on
  (E : Type _) [NormedAddCommGroup E] [NormedSpace ℝ E]
  (f : E → ℝ) (s : Set E)
  (h_diff : DifferentiableOn ℝ f s)
  (h_cont : ContinuousOn (fun x => fderiv ℝ f x) s)
  (h_comp : IsCompact s)
  (h_bdd : ∃ M : ℝ, 0 ≤ M ∧ ∀ x ∈ s, ∥(fderiv ℝ f x)∥ ≤ M) :
  ∃ K : NNReal, LipschitzOnWith K f s := by sorry
