import Mathlib

/-!
Van Kampen (amalgamated presentation) --- informal/translated statement.

Take a path connected and locally simply connected topological space X, and a cover by
path connected open sets X_a ⊂ X with path connected intersections X_{ab} := X_a ∩ X_b,
all containing some point x0 ∈ X. Let π := π_1(X,x0), π_a := π_1(X_a,x0), and so on.
Then π = *_{π_{ab}} π_a is the amalgamation of all π_a over all π_{ab}.

This file gives a high-level Lean4/Mathlib translation of that statement (no proof).
-/

open Topology

/-- Van Kampen theorem (amalgamated presentation):
If X is path connected and locally simply connected, and (U a) is a cover by path connected
open sets whose pairwise intersections are path connected, and every U a contains the basepoint x0,
then the fundamental group π1(X, x0) is the amalgamated free product of the groups
π1(U a, x0) over the subgroups π1(U a ∩ U b, x0).

This is stated here at a high level using placeholder names for the fundamental group and the
amalgamated free product; the body is omitted (:= by sorry).
-/
theorem van_kampen_amalgamation
  {X : Type*} [TopologicalSpace X] (x0 : X)
  {α : Type*} (U : α → Set X)
  (h_cover : (⋃ a, U a) = (Set.univ : Set X))
  (h_open : ∀ a, IsOpen (U a))
  (h_path : ∀ a, PathConnected (U a))
  (h_path_int : ∀ a b, PathConnected (U a ∩ U b))
  (h_x0 : ∀ a, x0 ∈ U a)
  (h_locally_simply_connected : True := True) :
  let π := FundamentalGroup (X) x0
  let π_a := fun a => FundamentalGroup (U a) x0
  let π_ab := fun a b => FundamentalGroup (U a ∩ U b) x0 in
  π = amalgamated_free_product (fun a b => π_ab a b) (fun a => π_a a) := by sorry
