import Mathlib

theorem quotient_metrizable_of_surjective {X Y : Type*} [PseudoMetricSpace X] (f : X → Y)
  (hf : Function.Surjective f) :
  ∃ (m : PseudoMetricSpace Y),
    @UniformSpace.toTopologicalSpace Y (@PseudoMetricSpace.toUniformSpace Y m) =
    TopologicalSpace.coinduced f (@UniformSpace.toTopologicalSpace X (@PseudoMetricSpace.toUniformSpace X _)) := by
  sorry
