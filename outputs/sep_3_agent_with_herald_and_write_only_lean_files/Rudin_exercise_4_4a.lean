import Mathlib

open Set

variable {X Y : Type*} [MetricSpace X] [MetricSpace Y]
variable (f : X → Y) (E : Set X)

/-- Let f and g be continuous mappings of a metric space X into a metric space Y, and let E be a dense subset of X. Prove that f(E) is dense in f(X). -/
theorem Rudin_exercise_4_4a (hf : Continuous f) (hdense : Dense E) : range f ⊆ closure (f '' E) := by
  sorry
