import Mathlib

/-!
Suppose a topology on the set Y is given as the final topology from functions
f_i : X_i → Y where i runs through an index set I. Let X' be some topological
space and P : X' → Y a map which factors all the f_i (i.e. there are maps
g_i : X_i → X' with P ∘ g_i = f_i). Assume the topology on Y is the coinduced
(final) topology from P. If each X' is Hausdorff then Y is Hausdorff iff P is
injective.

This file only states the theorem; the proof is omitted (":= by sorry").
-/

open TopologicalSpace

variable {ι : Type*}
variable (X : ι → Type*) [∀ i, TopologicalSpace (X i)]
variable (Y : Type*) [TopologicalSpace Y]
variable (X' : Type*) [TopologicalSpace X'] [T2Space X']

variable (f : ∀ i, X i → Y)
variable (g : ∀ i, X i → X')
variable (P : X' → Y)

-- P factors the family f via g
variable (hcomp : ∀ i, P ∘ g i = f i)
-- the topology on Y is the coinduced topology from P
variable (hfinal : (‹TopologicalSpace Y› : TopologicalSpace Y) = TopologicalSpace.coinduced P (‹TopologicalSpace X'›))

theorem t2_iff_injective : T2Space Y ↔ Function.Injective P := by sorry
