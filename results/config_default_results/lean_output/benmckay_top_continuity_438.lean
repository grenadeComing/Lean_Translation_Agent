import Mathlib

theorem quotient_topology_of_surjective_map_from_metric_is_metric {X Y : Type*}
  [MetricSpace X] (f : X → Y) (hf : Function.Surjective f) :
  ∃ (m : MetricSpace Y), (inferInstance : TopologicalSpace Y) = TopologicalSpace.coinduced f (inferInstance : TopologicalSpace X) := by sorry
