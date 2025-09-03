import Mathlib

open Filter Function

theorem Pugh_exercise_2_12a {α : Type*} [TopologicalSpace α] {p : ℕ → α} {f : ℕ → ℕ}
  (hf : Injective f) {a : α} (h : Tendsto p atTop (nhds a)) : Tendsto (p ∘ f) atTop (nhds a) := by sorry
