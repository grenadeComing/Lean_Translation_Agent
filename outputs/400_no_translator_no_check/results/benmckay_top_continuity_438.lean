import Mathlib

/-!
# Quotient topology from a metric

Let `f : X → Y` be a surjective map where `X` is a metric space. We state that the
quotient topology on `Y` induced by `f` arises from a (pseudo-)metric on `Y`.
-/

theorem quotient_topology_from_metric {X Y : Type*} (px : PseudoMetricSpace X) {f : X → Y}
  (hf : Function.Surjective f) :
  ∃ (h : PseudoMetricSpace Y),
    (@UniformSpace.toTopologicalSpace Y (@PseudoMetricSpace.toUniformSpace Y h)) =
      TopologicalSpace.coinduced f (@UniformSpace.toTopologicalSpace X (@PseudoMetricSpace.toUniformSpace X px)) := by
  sorry
