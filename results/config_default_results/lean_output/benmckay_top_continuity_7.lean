import Mathlib

open Set

universe u v

section
variable {α : Type u} [MetricSpace α]
variable {β : Type v} [MetricSpace β]
variable {X : Set α} {Y : Set β}
variable (f : {x // x ∈ X} → {y // y ∈ Y})

/--
Let X and Y be subsets of Euclidean spaces with the subspace topologies. For a map f : X → Y,
f is continuous (preimages of open sets are open) iff f is continuous in the usual ε-δ sense.
This file provides a Lean4 statement expressing that equivalence and ends with a placeholder proof.
-/
 theorem subspace_continuity_iff_eps_delta :
  Continuous f ↔
    ∀ x : {x // x ∈ X}, ∀ ε > 0, ∃ δ > 0, ∀ z : {x // x ∈ X}, dist z x < δ → dist (f z) (f x) < ε := by
  -- placeholder for the actual equivalence; to be proved using the metric space epsilon-delta characterisation
  sorry

end
