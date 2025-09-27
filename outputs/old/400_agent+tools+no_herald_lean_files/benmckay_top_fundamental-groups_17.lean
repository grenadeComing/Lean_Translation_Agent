import Mathlib

open Set

/-- The unit interval as a subset of ℝ. -/
def I : Set ℝ := Set.Icc (0 : ℝ) 1

/-- If y is a reparametrization of x by a continuous strictly monotone map τ : I → I
    with τ(0)=0 and τ(1)=1, then x and y are homotopic relative to the endpoints.

    We state the conclusion as the existence of a continuous map H : ℝ × ℝ → X on I × I
    with the usual boundary conditions. The proof is omitted (:= by sorry). -/
lemma reparametrization_homotopic_rel_endpoints {X : Type*} [TopologicalSpace X]
  {x y : ℝ → X} {τ : ℝ → ℝ}
  (hx : ContinuousOn x I) (hy : ContinuousOn y I)
  (hτ : ContinuousOn τ I) (hτ_image : τ '' I ⊆ I)
  (hstrict : StrictMonoOn τ I)
  (h0 : τ 0 = 0) (h1 : τ 1 = 1)
  (hreparam : ∀ t ∈ I, y (τ t) = x t) :
  ∃ H : ℝ × ℝ → X, ContinuousOn H (I.prod I) ∧
    (∀ t ∈ I, H (t, 0) = x t) ∧ (∀ t ∈ I, H (t, 1) = y t) ∧
    (∀ s ∈ I, H (0, s) = x 0) ∧ (∀ s ∈ I, H (1, s) = x 1) := by sorry
