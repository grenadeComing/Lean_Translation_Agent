import Mathlib

open Set

/-!
Statement: Let f : ℝ^n → ℝ be differentiable with continuous derivative on an open set U.
If K ⊆ U is compact and the derivative is bounded on K, then f is Lipschitz on K.
-/

theorem lipschitz_on_of_bounded_fderiv_on_compact {n : ℕ} {f : (Fin n → ℝ) → ℝ}
  {U K : Set (Fin n → ℝ)}
  (h_diff : DifferentiableOn ℝ f U)
  (h_cont : ContinuousOn (fun x => fderiv ℝ f x) U)
  (hKsub : K ⊆ U)
  (hK : IsCompact K)
  (h_bound : ∃ M, 0 ≤ M ∧ ∀ x ∈ K, ∥(fderiv ℝ f x : (Fin n → ℝ) →L[ℝ] ℝ)∥ ≤ M) :
  ∃ M, 0 ≤ M ∧ LipschitzOnWith M f K := by sorry
