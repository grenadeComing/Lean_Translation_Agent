import Mathlib

/-!
If X and Y are subsets of Euclidean spaces with the subspace topologies,
then a map f : X → Y is continuous (preimages of open sets are open)
iff f is continuous in the ε–δ sense.

We state this for metric spaces (in particular Euclidean spaces).
-/

variable {E F : Type*} [MetricSpace E] [MetricSpace F]
variable {X : Set E} {Y : Set F}
variable (f : ({x // x ∈ X} → {y // y ∈ Y}))

theorem continuous_subtype_iff_eps_delta :
  Continuous f ↔
  ∀ x : {x // x ∈ X}, ∀ ε : ℝ, 0 < ε → ∃ δ : ℝ, 0 < δ ∧
    ∀ x' : {x // x ∈ X}, dist (x' : E) (x : E) < δ → dist ((f x' : F)) ((f x : F)) < ε :=
by
  sorry
