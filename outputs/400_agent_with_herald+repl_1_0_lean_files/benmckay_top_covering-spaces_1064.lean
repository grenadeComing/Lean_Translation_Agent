import Mathlib

/-!
Van Kampen (informal statement).

Let X be a path connected and locally simply connected topological space with basepoint x0.
Let {X_a}_{a : ι} be an open cover of X by path connected open sets such that every intersection
X_{ab} := X_a ∩ X_b is path connected and each X_a and each X_{ab} contain the basepoint x0.
Write π := π_1(X,x0), π_a := π_1(X_a,x0), and π_{ab} := π_1(X_{ab},x0).
Then π is the amalgamated free product of the groups π_a amalgamated along the subgroups π_{ab};
in other words π ≅ *_{π_{ab}} π_a.
-/

theorem van_kampen_top_covering_spaces_1064 : True := by sorry
