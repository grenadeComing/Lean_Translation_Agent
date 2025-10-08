import Mathlib

/-!
Take a Hausdorff, path connected and locally simply connected space X. 
Prove that the deck transformation group of the universal covering space is precisely
π_1(X), acting by [x][y] = [x * y].
-/

theorem deck_trans_group_eq_pi_1 (X : Type*) [TopologicalSpace X]
  (haus : HausdorffSpace X) (path : PathConnectedSpace X) (locally_simply_conn : LocallySimplyConnectedSpace X) :
  deck_transformation_group (universal_cover X) = fundamental_group X := by sorry
