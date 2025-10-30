import Mathlib

/--
Let f : X → Y be a surjective map, where X is a metric space.
Prove that the quotient topology on Y induced by f arises from a metric on Y.
This file encodes the statement as a statement about metrizability of Y.
-/
theorem quotient_topology_metrizability_of_surjective
  {X Y : Type*} [MetricSpace X] (f : X → Y) (hf : Function.Surjective f) :
  MetrizableSpace Y := by
  -- proof to follow
  sorry
