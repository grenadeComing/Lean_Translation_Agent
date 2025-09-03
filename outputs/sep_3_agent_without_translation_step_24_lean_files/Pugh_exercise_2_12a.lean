import Mathlib

open Filter

/--
If `p` tends to `L` and `f` is an injection ℕ → ℕ, then the rearranged sequence `p ∘ f` also tends to `L`.
This corresponds to Pugh exercise 2.12(a).
-/
theorem Pugh_exercise_2_12a {α : Type _} [TopologicalSpace α] {p : ℕ → α} {L : α} {f : ℕ → ℕ}
  (hf : Function.Injective f) (hp : Tendsto p atTop (nhds L)) :
  Tendsto (p ∘ f) atTop (nhds L) := by sorry
