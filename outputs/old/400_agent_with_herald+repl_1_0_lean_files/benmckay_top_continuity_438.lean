import Mathlib

/-- If f : X → Y is a surjection from a pseudometric space X, then the quotient topology on Y
    is induced by some pseudometric on Y. -/
theorem quotient_topology_from_pseudometric {X Y : Type _} [PseudoMetricSpace X] (f : X → Y)
  (hf : Function.Surjective f) :
  ∃ (inst : PseudoMetricSpace Y), TopologicalSpace.coinduced f = (inst.toUniformSpace : UniformSpace Y).toTopologicalSpace := by
  sorry
