import Mathlib

universe u v

theorem quotient_topology_is_pseudometrizable {X : Type u} {Y : Type v} [MetricSpace X]
  (f : X → Y) (hf : Function.Surjective f) :
  ∃ (m : PseudoMetricSpace Y),
    @UniformSpace.toTopologicalSpace Y (@PseudoMetricSpace.toUniformSpace Y m) =
      TopologicalSpace.coinduced f (@UniformSpace.toTopologicalSpace X (@PseudoMetricSpace.toUniformSpace X (MetricSpace.toPseudoMetricSpace))) := by
  sorry
