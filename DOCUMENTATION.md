# Godot_SmoothMovement API Reference
Generated: Sun Mar  8 02:54:09 AM CET 2026

---

Class Reference
===============



.. toctree::
   :maxdepth: 2
   :caption: Contents:

   SmoothMovement
.. _SmoothMovement:

==============
SmoothMovement
==============

**Inherits:** 

Use this node to enable smooth movement on a node. To do this, attach the node to another node as a child. This node contains a "global_target_position" variable that you will be using instead of the regular position.


Property Index
==============

.. list-table::
   :header-rows: 1

   * - Type
     - Name
     - Default value
   * - :ref:`bool <bool>`
     - :ref:`rotation_on <SmoothMovement_rotation_on>`
     - ``true``
   * - :ref:`bool <bool>`
     - :ref:`sprite_rotation <SmoothMovement_sprite_rotation>`
     - ``false``
   * - :ref:`Node2D <Node2D>`
     - :ref:`sprite_node <SmoothMovement_sprite_node>`
     - ````
   * - :ref:`Vector2 <Vector2>`[]
     - :ref:`position_modifiers <SmoothMovement_position_modifiers>`
     - ````
   

Method Index
============

.. list-table::
   :header-rows: 1

   * - Return type
     - Signature
   * - :ref:`int <int>`
     - :ref:`modify_position <SmoothMovement_modify_position>`\(:ref:`Vector2 <Vector2>` pos\)* - :ref:`void <void>`
     - :ref:`remove_position_modification_by_id <SmoothMovement_remove_position_modification_by_id>`\(:ref:`int <int>` index\)




Property Descriptions
=====================


.. _SmoothMovement_rotation_on:

:ref:`bool <bool>` rotation_on = ``true``
-----------------------------------------

Disable or enable rotation (Note: Only the sprite is rotated)


.. _SmoothMovement_sprite_rotation:

:ref:`bool <bool>` sprite_rotation = ``false``
----------------------------------------------

Seperates rotation to the sprite, rather than the parent node


.. _SmoothMovement_sprite_node:

:ref:`Node2D <Node2D>` sprite_node
----------------------------------

Sprite, used for rotation when dragging


.. _SmoothMovement_position_modifiers:

:ref:`Vector2 <Vector2>`[] position_modifiers
---------------------------------------------

This will modify the global_target_position. This can be useful when adding temporary changes to an objects default position.



Method Descriptions
===================


.. _SmoothMovement_modify_position:

:ref:`int <int>` modify_position\(:ref:`Vector2 <Vector2>` pos\)
----------------------------------------------------------------

modifies the global position and returns the ID of the modification, which can be used to later delete the modification


.. _SmoothMovement_remove_position_modification_by_id:

:ref:`void <void>` remove_position_modification_by_id\(:ref:`int <int>` index\)
-------------------------------------------------------------------------------

removes a modification of the global position through its id

