import Mathlib

/-!
Translate: Let f : X → Y be a surjective map, where X is a metric space. Prove that the quotient
topology on Y induced by f arises from a metric on Y.

Note: the statement as given is not true in general without extra hypotheses (e.g., closedness of
the kernel/equivalence relation, or additional separation/countability assumptions). Here we only
translate the (unqualified) claim into a Lean statement; the proof is omitted ("by sorry").
-/

open Topology

theorem quotient_of_metric_space_is_metrizable {X Y : Type*} [MetricSpace X] [TopologicalSpace Y]
  (f : X → Y) (hf : Function.Surjective f) (hq : IsQuotientMap f) :
  MetrizableSpace Y := by sorry
