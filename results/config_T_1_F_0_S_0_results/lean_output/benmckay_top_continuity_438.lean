import Mathlib

/-- Let f : X → Y be a surjective map, where X is a metric space. Then the quotient topology on Y
induced by f arises from a pseudometric on Y: one can equip Y with a PseudoMetricSpace structure.
-/
theorem quotient_pseudo_metric_space_of_surjective {X Y : Type*} [MetricSpace X] (f : X → Y)
  (hf : Surjective f) : PseudoMetricSpace Y := by sorry