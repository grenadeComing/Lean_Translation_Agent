import Mathlib

/-!
Exercise 2.12(a) from Pugh: If (p_n) -> L and f : ℕ → ℕ is injective, then the rearranged sequence q_k = p_{f(k)} also converges to L.
-/

open Filter

theorem Pugh_exercise_2_12a {α : Type*} [TopologicalSpace α] {p : ℕ → α} {f : ℕ → ℕ} (hf : Injective f)
  {L : α} (h : Tendsto p atTop (nhds L)) : Tendsto (p ∘ f) atTop (nhds L) := by sorry
