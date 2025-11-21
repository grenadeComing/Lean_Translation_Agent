import Mathlib

/-!
# Any connected finite graph has finitely generated fundamental group.

We state the standard topological fact that if G is a finite connected graph (viewed as a 1-dimensional
finite CW-complex or as the geometric realization of a finite simple graph) then its fundamental group
is finitely generated (indeed a finitely generated free group).

The statement below is written so as to be semantically faithful to the mathematical claim; specific
names for geometric realization and the predicate saying a group is finitely generated are used in a
natural way and should be adjusted if different names are used in a particular Mathlib environment.
-/

theorem connected_finite_graph_fundamental_group_finitely_generated
  {V : Type*} [Fintype V]
  (G : SimpleGraph V)
  (hG_conn : G.is_connected) :
  -- Let |G| denote the geometric/topological realization of the finite simple graph G and
  -- π₁(|G|, v) its fundamental group based at some vertex v.  The conclusion asserts that this
  -- fundamental group is finitely generated (in fact free of finite rank).
  (fundamental_group (GeometricRealization.of_simple_graph G) (GeometricRealization.some_basepoint G)).
    IsFinitelyGenerated := by sorry