import Mathlib

/--
Let f : X → Y be a surjective map, where X is a metric space.
There exists a metric on Y whose induced topology equals the quotient
topology on Y coinduced by f from the metric topology on X.
-/
theorem benmckay_top_continuity_438 {X Y : Type*} [MetricSpace X] (f : X → Y)
  (hf : Function.Surjective f) :
  ∃ (m : MetricSpace Y),
    @UniformSpace.toTopologicalSpace Y
      (@PseudoMetricSpace.toUniformSpace Y (@MetricSpace.toPseudoMetricSpace Y m)) =
    TopologicalSpace.coinduced f
      (@UniformSpace.toTopologicalSpace X
        (@PseudoMetricSpace.toUniformSpace X (@MetricSpace.toPseudoMetricSpace X _))) := by sorry
