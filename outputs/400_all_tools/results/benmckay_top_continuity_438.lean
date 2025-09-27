import Mathlib

/-- Let f : X → Y be a surjective map, where X is a metric space.
    There exists a pseudometric on Y whose induced topology equals the
    quotient (coinduced) topology from f. The proof is omitted. -/
theorem benmckay_top_continuity_438 {X Y : Type*} (f : X → Y) [MetricSpace X]
  (hf : Surjective f) :
  let topX : TopologicalSpace X :=
    @UniformSpace.toTopologicalSpace X (PseudoMetricSpace.toUniformSpace (MetricSpace.toPseudoMetricSpace : PseudoMetricSpace X));
  ∃ (m : PseudoMetricSpace Y),
    (@UniformSpace.toTopologicalSpace Y (PseudoMetricSpace.toUniformSpace m)) =
      TopologicalSpace.coinduced f topX :=
by sorry
