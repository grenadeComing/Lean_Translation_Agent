import Mathlib

/-- Let f and g be continuous mappings of a metric space X into a metric space Y,
    and let E be a dense subset of X. Prove that if g(p) = f(p) for all p in E
    then g(p) = f(p) for all p in X. -/

theorem Rudin_exercise_4_4b {X : Type _} {Y : Type _} [MetricSpace X] [MetricSpace Y]
  {f g : X → Y} (hf : Continuous f) (hg : Continuous g) {E : Set X} (hE : Dense E)
  (hfg : ∀ p ∈ E, g p = f p) : ∀ p : X, g p = f p := by sorry
