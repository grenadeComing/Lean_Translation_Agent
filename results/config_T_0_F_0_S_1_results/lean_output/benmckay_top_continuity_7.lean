import Mathlib

/-!
We state that for subsets s ⊆ α and t ⊆ β of metric spaces, a map f : s → t is continuous
(with the subspace/topological notion of continuity) iff it satisfies the usual ε-δ condition
(with distances measured in the ambient metric spaces and coercions from the subtypes).
-/

theorem continuous_iff_forall_eps_delta_on_subsets {α β : Type*} [MetricSpace α] [MetricSpace β]
  (s : Set α) (t : Set β) (f : s → t) :
  Continuous f ↔
  ∀ x : s, ∀ ε : ℝ, 0 < ε → ∃ δ : ℝ, 0 < δ ∧ ∀ y : s,
    dist (y : α) (x : α) < δ → dist (f y : β) (f x : β) < ε := by sorry
