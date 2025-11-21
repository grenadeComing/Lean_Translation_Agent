import Mathlib

/--
Let X be a Hausdorff, path connected and locally simply connected space.
If p : ˜X → X is a universal covering of X, then the group of deck
transformations of p is naturally isomorphic to the fundamental group
π₁(X, x0). Under this identification the action is given by concatenation
of loops: for [α] ∈ π₁(X, x0) and a lift [β] (represented by a path β starting
at the basepoint lift), the corresponding deck transformation sends [β]
to [α * β].

This file only states the result (no proof).
-/

variable {X : Type*} [TopologicalSpace X]

-- Hypotheses on X
variable (x0 : X)
variable [T2Space X] [PathConnectedSpace X] [LocallySimplyConnectedSpace X]

-- We treat a universal cover abstractly as some map `proj` from a total space `˜X`.
structure UniversalCover (X : Type*) [TopologicalSpace X] :=
(total : Type*)
[top_total : TopologicalSpace total]
(proj : total → X)
(is_covering_map : Prop) -- placeholder for the covering map property
(is_universal : Prop)    -- placeholder for universality (simply connected total)

-- Deck transformations of a covering map `proj : ˜X → X` (as a set of self-homeomorphisms over X)
def Deck (U : UniversalCover X) : Type* :=
{f : U.total → U.total // (Continuous f) ∧ Function.Bijective f ∧ U.proj ∘ f = U.proj}

-- Fundamental group of X at x0 (opaque type used to state the isomorphism)
variable (FundamentalGroup : Type*)

/--
Main statement: for a universal cover `U` of `X`, the deck transformation
group of `U` is (canonically) isomorphic to the fundamental group of `X`.
The action is the usual one by concatenation of loops: [α]·[β] = [α * β].
-/
theorem deck_group_universal_cover_equiv_fundamental_group
  (U : UniversalCover X)
  (hU_cover : U.is_covering_map) (hU_univ : U.is_universal) :
  Deck U ≃* FundamentalGroup :=
by sorry
